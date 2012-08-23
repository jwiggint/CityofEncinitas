// ActionScript file
package EncComponents
{

	public class customcompare
	{
		

	public function onCompare(a:Object, b:Object, fields:Array = null):int
	{
		switch (a.Type)
		{
			case "Subdivision":
			{
				switch (b.Type)
				{
					case "Subdivision":
					{
						return 0;
						break;
					}
						
					case "Lot Parcel":
					{
						return -1;
						break;
					}
					case "Block":
					{
						return -1;
						break;
					}
					default:
					{
						return -1;
						break;
					}
				}
			}
			case "Block":
			{
				switch (b.Type)
				{
					case "Subdivision":
					{
						return 1;
						break;
					}
						
					case "Lot Parcel":
					{
						return -1;
						break;
					}
					case "Block":
					{
						return 0;
						break;
					}
					default:
					{
						return -1;
						break;
					}
				}
			}
			case "Lot Parcel":
			{
				switch (b.Type)
				{
					case "Subdivision":
					{
						return 1;
						break;
					}
						
					case "Lot Parcel":
					{
						return 0;
						break;
					}
					case "Block":
					{
						return 1;
						break;
					}
					default:
					{
						return -1;
						break;
					}
				}
			}
			default:
			{
				return 1;
				break;
			}
		}
	}
	}
}
