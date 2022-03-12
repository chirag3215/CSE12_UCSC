extern void fill_bitmap(unsigned char background);
extern void draw_pixel(unsigned char rectangle_color, int y, int x);

void rectangle(unsigned char background, unsigned char rectangle_color, int left, int top, int right, int bottom)
{
    fill_bitmap(background);
    for (int x = left; x <= right; x++)
    {
        draw_pixel(rectangle_color, top, x);   
        draw_pixel(rectangle_color, bottom, x); 
    }

    for (int y = top; y <= bottom; y++)
    {
        draw_pixel(rectangle_color, y, left); 
        draw_pixel(rectangle_color, y, right); 
    }
}
void main()
{
    rectangle(0x7c, 0x83, 1, 9, 23, 28); // 0x7c = 4(1 + 9 + 0 + 6 + 4 + 3 + 8) =124 / 16 = 7 remainder 12 or c
                                         // 0x83  = 4(1 + 9 + 0 + 6 + 4 + 3 + 8) = 124 = 0b01111100 not = 0b10000011
                                         // 31 - 8 = 23
                                         // 31 - 3 = 28

}