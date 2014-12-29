import std.stdio;
import std.string;
import std.range;
import std.conv;
import std.array;
import std.traits;
import std.mmfile;
import std.bitmanip;
import std.system;
import std.algorithm;
import std.file;
import std.path;
import std.typecons;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.custom.TableEditor;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.layout.GridData;
import java.lang.util;
import java.io.ByteArrayInputStream;
import structs;

void main()
{
    Config config;
    auto display = new Display();
    auto shell = new Shell(display);
    shell.setText("Config Editor");
    auto small = new Image(display, new ByteArrayInputStream(cast(byte[])import("eclipse-red-32.png")));
    auto large = new Image(display, new ByteArrayInputStream(cast(byte[])import("eclipse-red-64.png")));
    shell.setImages([small, large]);
    shell.setSize(800, 600);

    auto layout = new GridLayout(2, true);
    shell.setLayout(layout);

    auto left = new Composite(shell, SWT.NONE);
    auto leftGrid = new GridLayout(5, false);
    leftGrid.marginWidth = 0;
    leftGrid.marginHeight = 0;
    left.setLayout(leftGrid);
    left.setLayoutData(new GridData(GridData.FILL_BOTH));

    auto right = new Composite(shell, SWT.NONE);
    auto rightGrid = new GridLayout(3, false);
    rightGrid.marginWidth = 0;
    rightGrid.marginHeight = 0;
    right.setLayout(rightGrid);
    right.setLayoutData(new GridData(GridData.FILL_BOTH));

    auto bottom = new Composite(shell, SWT.NONE);
    auto bottomGrid = new GridLayout(3, false);
    bottomGrid.marginWidth = 0;
    bottomGrid.marginHeight = 0;
    bottom.setLayout(bottomGrid);
    bottom.setLayoutData(new GridData(SWT.FILL, SWT.TOP, true, false, 2, 1));

    auto configText = new Text(left, SWT.SINGLE | SWT.BORDER);
    configText.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 3, 1));
    auto openConfig = new Button(left, SWT.PUSH);
    openConfig.setText("...");
    openConfig.setLayoutData(new GridData(SWT.FILL, SWT.TOP, false, false, 1, 1));
    auto loadConfig = new Button(left, SWT.PUSH);
    loadConfig.setText("Load");
    loadConfig.setLayoutData(new GridData(SWT.FILL, SWT.TOP, false, false, 1, 1));
    auto configCombo = new Combo(left, SWT.DROP_DOWN | SWT.READ_ONLY);
    configCombo.setLayoutData(new GridData(SWT.FILL, SWT.TOP, true, false, 2, 1));
    auto addConfig = new Button(left, SWT.PUSH);
    addConfig.setText("Add");
    addConfig.setLayoutData(new GridData(SWT.FILL, SWT.TOP, false, false, 1, 1));
    auto removeConfig = new Button(left, SWT.PUSH);
    removeConfig.setText("Remove");
    removeConfig.setLayoutData(new GridData(SWT.FILL, SWT.TOP, false, false, 1, 1));
    auto renameConfig = new Button(left, SWT.PUSH);
    renameConfig.setText("Rename");
    renameConfig.setLayoutData(new GridData(SWT.FILL, SWT.TOP, false, false, 1, 1));
    auto configTable = new Table(left, SWT.SINGLE | SWT.BORDER | SWT.V_SCROLL | SWT.FULL_SELECTION);
    configTable.setLinesVisible(true);
    configTable.setHeaderVisible(true);
    configTable.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true, 5, 1));
    auto titles = ["Name", "Type", "Length"];
    for(int i = 0; i < titles.length; i++)
    {
        auto column = new TableColumn(configTable, SWT.NONE);
        column.setText(titles[i]);
        column.setResizable(false);
    }
    auto editor = new TableEditor(configTable);
    editor.grabHorizontal = true;
    auto separator = new Label(left, SWT.NONE);
    separator.setVisible(false);
    separator.setLayoutData(new GridData(SWT.FILL, SWT.FILL, false, false, 1, 1));
    auto upEntry = new Button(left, SWT.PUSH);
    upEntry.setText("Move up");
    upEntry.setLayoutData(new GridData(SWT.RIGHT, SWT.BOTTOM, false, false, 1, 1));
    auto downEntry = new Button(left, SWT.PUSH);
    downEntry.setLayoutData(new GridData(SWT.RIGHT, SWT.BOTTOM, false, false, 1, 1));
    downEntry.setText("Move down");
    auto addEntry = new Button(left, SWT.PUSH);
    addEntry.setText("Add");
    addEntry.setLayoutData(new GridData(SWT.FILL, SWT.BOTTOM, false, false, 1, 1));
    auto removeEntry = new Button(left, SWT.PUSH);
    removeEntry.setText("Remove");
    removeEntry.setLayoutData(new GridData(SWT.RIGHT, SWT.BOTTOM, false, false, 1, 1));

    auto elementText = new Text(right, SWT.SINGLE | SWT.BORDER);
    elementText.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
    auto openElement = new Button(right, SWT.PUSH);
    openElement.setText("...");
    openElement.setLayoutData(new GridData(SWT.LEFT, SWT.TOP, false, false, 1, 1));
    auto loadElement = new Button(right, SWT.PUSH);
    loadElement.setText("Load");
    loadElement.setLayoutData(new GridData(SWT.LEFT, SWT.TOP, false, false, 1, 1));
    auto elementList = new Table(right, SWT.HIDE_SELECTION | SWT.BORDER | SWT.V_SCROLL);
    elementList.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, true, 3, 1));

    auto saveText = new Text(bottom, SWT.SINGLE | SWT.BORDER);
    saveText.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
    auto openButton = new Button(bottom, SWT.PUSH);
    openButton.setText("...");
    openButton.setLayoutData(new GridData(SWT.LEFT, SWT.TOP, false, false, 1, 1));
    auto saveButton = new Button(bottom, SWT.PUSH);
    saveButton.setText("Save");
    saveButton.setLayoutData(new GridData(SWT.LEFT, SWT.TOP, false, false, 1, 1));
    saveText.pack();

    left.addControlListener(new class ControlAdapter
    {
        public override void controlResized(ControlEvent e)
        {
            auto area = left.getClientArea();
            auto size = configTable.computeSize(SWT.DEFAULT, SWT.DEFAULT);
            auto vBar = configTable.getVerticalBar();
            auto width = area.width - configTable.computeTrim(0, 0, 0, 0).width;
            if(size.y > area.height + configTable.getHeaderHeight()) 
                width -= vBar.getSize().x;
            configTable.getColumn(0).setWidth(width / 3);
            configTable.getColumn(1).setWidth(width / 3);
            configTable.getColumn(2).setWidth(width / 3);
        }
    });
    openConfig.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto dialog = new FileDialog(shell, SWT.OPEN);
            auto path = configText.getText().strip.empty ? "." : (configText.getText().isDir ? configText.getText() : configText.getText().dirName);
            dialog.setFilterPath(path);
            dialog.setFilterExtensions(["*.cfg", "*.*"]);
            auto name = dialog.open();
            if(name is null)
                return;
            configText.setText(name);
        }
    });
    openElement.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto dialog = new FileDialog(shell, SWT.OPEN);
            auto path = elementText.getText().strip.empty ? "." : (elementText.getText().isDir ? elementText.getText() : elementText.getText().dirName);
            dialog.setFilterPath(path);
            dialog.setFilterExtensions(["*.data", "*.*"]);
            auto name = dialog.open();
            if(name is null)
                return;
            elementText.setText(name);
        }
    });
    openButton.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto dialog = new FileDialog(shell, SWT.SAVE);
            auto path = saveText.getText().strip.empty ? "." : (saveText.getText().isDir ? saveText.getText() : saveText.getText().dirName);
            dialog.setFilterPath(path);
            dialog.setFilterExtensions(["*.cfg", "*.*"]);
            auto name = dialog.open();
            if(name is null)
                return;
            saveText.setText(name);
        }
    });
    loadConfig.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            loadCfg(configText.getText(), config);
            foreach(list; config.lists)
                configCombo.add(list.name);
            configCombo.select(0);
        }
    });
    loadElement.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            if(config.count == 0)
                return;
            loadData(elementText.getText(), config, elementList);
        }
    });
    saveButton.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            if(config.count == 0)
                return;
            saveCfg(saveText.getText(), config);
        }
    });
    addConfig.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto dialog = new Shell (shell, SWT.DIALOG_TRIM);
            dialog.setText("Enter list name");
            dialog.setLayout (new GridLayout (3, false));

            auto text = new Text(dialog, SWT.SINGLE | SWT.BORDER);
            text.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, true, 3, 1));
            auto separator = new Label(dialog, SWT.NONE);
            separator.setVisible(false);
            separator.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 2, 1));
            auto ok = new Button (dialog, SWT.PUSH);
            ok.setText ("OK");
            ok.setLayoutData(new GridData (SWT.FILL, SWT.CENTER, false, false, 1, 1));
            ok.addListener(SWT.Selection, new class Listener
            {
                public void handleEvent(Event e)
                {
                    auto index = configCombo.getSelectionIndex();
                    if(index <= config.npcTalk)
                        config.npcTalk++;
                    auto list = new ConfigList(config.lists.length, text.getText(), "0");
                    config.lists.insertInPlace(index + 1, list);
                    configCombo.add(list.name, index + 1);
                    configCombo.select(index + 1);
                    dialog.close();
                }
            });
            dialog.setDefaultButton(ok);
            dialog.pack();
            dialog.open();
        }
    });
    removeConfig.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            if(index < config.npcTalk)
                config.npcTalk--;
            if(index == config.npcTalk)
            {
                MessageBox.showMessageBox("You can't remove this list!", "", shell, SWT.ICON_WARNING);
                return;
            }
            config.lists = config.lists.remove(index);
            configCombo.remove(index);
            index = index > 0 ? index - 1 : 0;
            configCombo.select(index);
        }
    });
    renameConfig.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            if(index == -1)
                return;
            auto list = config.lists[index];
            auto dialog = new Shell (shell, SWT.DIALOG_TRIM);
            dialog.setText("Enter list name");
            dialog.setLayout (new GridLayout (3, false));
            
            auto text = new Text(dialog, SWT.SINGLE | SWT.BORDER);
            text.setText(list.name);
            text.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, true, 3, 1));
            auto separator = new Label(dialog, SWT.NONE);
            separator.setVisible(false);
            separator.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 2, 1));
            auto ok = new Button (dialog, SWT.PUSH);
            ok.setText ("OK");
            ok.setLayoutData(new GridData (SWT.FILL, SWT.CENTER, false, false, 1, 1));
            ok.addListener(SWT.Selection, new class Listener
            {
                public void handleEvent(Event e)
                {
                    list.name = text.getText();
                    config.lists[index] = list;
                    configCombo.setItem(index, list.name);
                    dialog.close();
                }
            });
            dialog.setDefaultButton(ok);
            dialog.pack();
            dialog.open();
        }
    });
    upEntry.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            auto list = config.lists[index];
            auto row = configTable.getSelectionIndex();
            if(row < 1)
                return;
            if(list.names.length > row)
                swap(list.names[row], list.names[row - 1]);
            swap(list.types[row], list.types[row - 1]);
            foreach(i; 0..3)
            {
                auto temp = configTable.getItem(row - 1).getText(i);
                configTable.getItem(row - 1).setText(i, configTable.getItem(row).getText(i));
                configTable.getItem(row).setText(i, temp);
            }
            configTable.select(row - 1);
        }
    });
    downEntry.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            auto list = config.lists[index];
            auto row = configTable.getSelectionIndex();
            if(row >= configTable.getItemCount - 1)
                return;
            if(list.names.length > row)
                swap(list.names[row], list.names[row + 1]);
            swap(list.types[row], list.types[row + 1]);
            foreach(i; 0..3)
            {
                auto temp = configTable.getItem(row + 1).getText(i);
                configTable.getItem(row + 1).setText(i, configTable.getItem(row).getText(i));
                configTable.getItem(row).setText(i, temp);
            }
            configTable.select(row + 1);
        }
    });
    addEntry.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            auto list = config.lists[index];
            auto row = configTable.getSelectionIndex();
            if(row == -1)
                row = configTable.getItemCount() - 1;
            if(list.names.length > row)
                list.names.insertInPlace(row + 1, "");
            list.types.insertInPlace(row + 1, Type());
            auto item = new TableItem(configTable, SWT.NONE, row + 1);
            item.setText(["", "", "0"]);
        }
    });
    removeEntry.addListener(SWT.Selection, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto index = configCombo.getSelectionIndex();
            auto list = config.lists[index];
            auto row = configTable.getSelectionIndex();
            if(row == -1)
                return;
            if(list.names.length > row)
                list.names = list.names.remove(row);
            list.types = list.types.remove(row);
            configTable.remove(row);
        }
    });
    configCombo.addListener(SWT.Modify, new class Listener
    {
        public void handleEvent(Event e)
        {
            auto oldEditor = editor.getEditor();
            if(oldEditor !is null)
                oldEditor.dispose();
            auto index = configCombo.getSelectionIndex();
            if(config.lists.length <= index)
                return;
            configTable.removeAll();
            auto list = config.lists[index];
            foreach(i, type; list.types)
            {
                auto name = "";
                string typeName = type.name;
                if(list.names.length > i)
                    name = list.names[i];
                auto item = new TableItem(configTable, SWT.NONE);
                item.setText([name, typeName, type.length]);
            }
        }
    });
    configTable.addMouseListener(new class BlackHole!MouseListener
    {
        public override void mouseDoubleClick(MouseEvent e)
        {
            auto oldEditor = editor.getEditor();
            if(oldEditor !is null)
                oldEditor.dispose();
            if(e.button != 1)
                return;
            auto pt = new Point(e.x, e.y);
            auto item = configTable.getItem(pt);
            if(item is null)
                return;
            auto index = configTable.indexOf(item);
            auto list = config.lists[configCombo.getSelectionIndex];
            auto column = 0;
            for(auto i = 0; i < configTable.getColumnCount(); i++)
            {
                auto rect = item.getBounds(i);
                if(rect.contains(pt))
                {
                    column = i;
                    break;
                }
            }
            Control control = null;
            if(column == 0)
            {
                auto text = new Text(configTable, SWT.NONE);
                text.setText(item.getText(0));
                text.addModifyListener(new class ModifyListener
                {
                    public void modifyText(ModifyEvent e)
                    {
                        editor.getItem().setText(0, text.getText());
                        if(list.names.length <= index)
                            list.names.length = index + 1;
                        list.names[index] = text.getText();
                    }
                });
                text.addFocusListener(new class FocusListener
                {
                    public void focusGained(FocusEvent e)
                    {}

                    public void focusLost(FocusEvent e)
                    {
                        auto oldEditor = editor.getEditor();
                        if(oldEditor !is null)
                            oldEditor.dispose();
                    }
                });
                control = text;
            }
            else if(column == 1)
            {
                auto combo = new CCombo(configTable, SWT.DROP_DOWN | SWT.READ_ONLY);
                combo.setText(item.getText(1));
                foreach(immutable type; [EnumMembers!TypeName])
                {
                    string typeName = type;
                    combo.add(typeName);
                }
                combo.addModifyListener(new class ModifyListener
                {
                    public void modifyText(ModifyEvent e)
                    {
                        editor.getItem().setText(1, combo.getText());
                        list.types[index].name = cast(TypeName)combo.getText();
                        if(list.types[index].name == TypeName.int32 || list.types[index].name == TypeName.uint32 || list.types[index].name == TypeName.floatT)
                        {
                            list.types[index].length = "4";
                            editor.getItem().setText(2, "4");
                        }
                    }
                });
                combo.addFocusListener(new class FocusListener
                {
                    public void focusGained(FocusEvent e)
                    {}
                    
                    public void focusLost(FocusEvent e)
                    {
                        auto oldEditor = editor.getEditor();
                        if(oldEditor !is null)
                            oldEditor.dispose();
                    }
                });
                control = combo;
            }
            if(column == 2)
            {
                if(list.types[index].name == TypeName.int32 || list.types[index].name == TypeName.uint32 || list.types[index].name == TypeName.floatT)
                    return;
                auto text = new Text(configTable, SWT.NONE);
                text.setText(item.getText(2));
                text.addModifyListener(new class ModifyListener
                {
                    public void modifyText(ModifyEvent e)
                    {
                        editor.getItem().setText(2, text.getText());
                        list.types[index].length = text.getText();
                    }
                });
                text.addFocusListener(new class FocusListener
                {
                    public void focusGained(FocusEvent e)
                    {}
                    
                    public void focusLost(FocusEvent e)
                    {
                        auto oldEditor = editor.getEditor();
                        if(oldEditor !is null)
                            oldEditor.dispose();
                    }
                });
                control = text;
            }
            control.setFocus();
            editor.setEditor(control, item, column);
        }
    });
    elementList.addMouseListener(new class BlackHole!MouseListener
    {
        public override void mouseDoubleClick(MouseEvent e)
        {
            if(e.button != 1)
                return;
            auto pt = new Point(e.x, e.y);
            auto item = elementList.getItem(pt);
            auto index = elementList.indexOf(item);
            configCombo.select(index);
        }
    });
    shell.addListener(SWT.Close, new class Listener
    {
        public void handleEvent(Event event)
        {
            auto file = File("./config.conf", "w");
            file.writefln("configPath=%s", configText.getText());
            file.writefln("elementPath=%s", elementText.getText());
            file.writef("savePath=%s", saveText.getText());
        }
    });

    if(exists("./config.conf"))
    {
        auto file = File("./config.conf", "r");
        foreach(line; file.byLine(KeepTerminator.no))
        {
            if(line.startsWith("configPath"))
                configText.setText(line.split("=")[1].text);
            else if(line.startsWith("elementPath"))
                elementText.setText(line.split("=")[1].text);
            else if(line.startsWith("savePath"))
                saveText.setText(line.split("=")[1].text);
        }
    }

    shell.open();
    while(!shell.isDisposed()) 
        if(!display.readAndDispatch())
            display.sleep();

    small.dispose();
    large.dispose();
    display.dispose();
}

private void loadCfg(string path, ref Config config)
{
    if(!exists(path))
        return;
    auto file = File(path, "r");
    auto range = file.byLine(KeepTerminator.no);
    config.count = range.front.text.strip.to!int;
    range.popFront();
    config.npcTalk = range.front.text.strip.to!int;
    range.popFront();
    for(auto i = 0; i < config.count; i++)
    {
        while(range.front.text.strip.empty)
            range.popFront();
        auto listStr = range.take(4).map!(to!string).array;
        auto list = new ConfigList();
        list.index = i;
        list.name = listStr[0].strip;
        list.skip = listStr[1].strip;
        list.names = listStr[2].strip.split(";");
        foreach(type; listStr[3].strip.split(";"))
        {
            auto temp = type.split(":");
            auto name = cast(TypeName)temp[0];
            auto length = "4";
            if(temp.length > 1)
                length = temp[1];
            list.types ~= Type(name, length);
        }
        config.lists ~= list;
    }
    file.close();
}

private void loadData(string path, ref Config config, Table table)
{
    if(!exists(path))
        return;
    auto file = new MmFile(path);
    auto buffer = cast(ubyte[])file[];
    buffer.read!(uint, Endian.littleEndian);
    foreach(list; config.lists)
    {
        if(list.skip != "0" && list.skip != "AUTO")
        {
            auto skip = list.skip.to!int;
            for(auto i = 0; i < skip; i++)
                buffer.read!(byte, Endian.littleEndian);
        }
        else if(list.skip == "AUTO")
        {
            buffer.read!(int, Endian.littleEndian);
            auto count = buffer.read!(int, Endian.littleEndian);
            for(auto i = 0; i < count; i++)
                buffer.read!(byte, Endian.littleEndian);
            count = buffer.peek!(int, Endian.littleEndian);
            while(count <= 0 || count > 10000)
            {
                buffer.read!(int, Endian.littleEndian);
                count = buffer.peek!(int, Endian.littleEndian);
            }
        }
        if(list.index == config.npcTalk)
        {
            auto count = buffer.read!(int, Endian.littleEndian);
            for(auto i = 0; i < count; i++)
            {
                for(auto n = 0; n < 132; n++)
                    buffer.read!(byte, Endian.littleEndian);
                auto count2 = buffer.read!(int, Endian.littleEndian);
                for(auto n = 0; n < count2; n++)
                {
                    buffer.read!(uint, Endian.littleEndian);
                    buffer.read!(uint, Endian.littleEndian);
                    auto l = buffer.read!(int, Endian.littleEndian);
                    for(auto k = 0; k < l * 2; k++)
                        buffer.read!(byte, Endian.littleEndian);
                    l = buffer.read!(int, Endian.littleEndian);
                    for(auto k = 0; k < l * 136; k++)
                        buffer.read!(byte, Endian.littleEndian);
                }
            }
        }
        else
        {
            auto size = list.getSize();
            auto count = buffer.read!(int, Endian.littleEndian);
            auto item = new TableItem(table, SWT.NONE);
            item.setText(format("List : %s Size : %s Count : %s", list.name, size, count));
            if(count <= 0 || count > 10000)
                item.setForeground(table.getDisplay().getSystemColor(SWT.COLOR_RED));
            if(buffer.length < count * size)
                return;
            for(auto i = 0; i < count * size; i++)
                buffer.read!(byte, Endian.littleEndian);
        }
    }
}

private void saveCfg(string path, ref Config config)
{
    auto file = File(path, "w");
    file.writeln(config.count.text);
    file.write(config.npcTalk.text);
    foreach(list; config.lists)
    {
        file.writeln();
        file.writeln();
        file.writeln(list.name);
        file.writeln(list.skip);
        file.writeln(list.names.join(";"));
        file.write(list.types.map!(to!string).join(";"));
    }
    file.close();
}