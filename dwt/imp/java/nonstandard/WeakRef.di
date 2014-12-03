// D import file generated from 'java\nonstandard\WeakRef.d'
module java.nonstandard.WeakRef;
private 
{
	alias void delegate(Object) DisposeEvt;
	extern (C) void rt_attachDisposeEvent(Object obj, DisposeEvt evt);

	extern (C) void rt_detachDisposeEvent(Object obj, DisposeEvt evt);

}
class WeakRef(T : Object)
{
	private 
	{
		size_t cast_ptr_;
		void unhook(Object o)
		{
			if (cast(size_t)cast(void*)o == cast_ptr_)
			{
				rt_detachDisposeEvent(o, &unhook);
				cast_ptr_ = 0;
			}
		}

		public 
		{
			this(T tptr)
			{
				cast_ptr_ = cast(size_t)cast(void*)tptr;
				rt_attachDisposeEvent(tptr, &unhook);
			}

			~this()
			{
				T p = ptr();
				if (p)
				{
					rt_detachDisposeEvent(p, &unhook);
				}
			}
			T ptr()
			{
				return cast(T)cast(void*)cast_ptr_;
			}

			WeakRef dup()
			{
				return new WeakRef(ptr());
			}

			equals_t opEquals(Object o)
			{
				if (auto other = cast(WeakRef!T)o)
				{
					return other.cast_ptr_ is cast_ptr_;
				}
				return false;
			}

			hash_t toHash()
			{
				return cast_ptr_;
			}

		}
	}
}
