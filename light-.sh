
#!/bin/bash
# 获取当前显示器的名称
DISPLAY_NAME=$(xrandr | grep " connected" | head -n 1 | awk '{print $1}')

# 使用xrandr获取当前亮度百分比值
BRIGHTNESS=$(xrandr --query --verbose | grep Brightness | cut -d: -f2 | tr -d ' ')
    
# 减少亮度
INCREASED_BRIGHTNESS=$(echo "$BRIGHTNESS - 0.1" | bc)
    
# 将亮度值限制在0.1以上
if [ $(echo "$INCREASED_BRIGHTNESS < 0.2" | bc) -eq 1 ]; then
INCREASED_BRIGHTNESS=$(echo "0.2" | bc)
fi
    
# 将亮度值转换回百分比形式
    
# 使用xrandr设置新的亮度值
#echo "$INCREASED_BRIGTNESS"
xrandr --output "$DISPLAY_NAME" --brightness "$INCREASED_BRIGHTNESS"
    
# 打印新的亮度值
echo "New brightness set to: $INCREASED_BRIGHTNESS"

#echo "Brightness information not found for display: $DISPLAY_NAME"

