# Flexbox

## Resources

* [CSS Tricks Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
* [Basic concepts of flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox)
* [Controlling Ratios of Flex Items Along the Main Axis](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Controlling_Ratios_of_Flex_Items_Along_the_Main_Ax)

## Notes

### flex

The **flex** shorthand property consists of **flex-grow**, **flex-shrink**, and **flex-basis**. The following code would set:

* **flex-grow** to `2`
* **flex-shrink** to `1`
* **flex-basis** to `auto`

```css
.item {
  flex: 2 1 auto;
}
```

### flex-basis

**flex-basis** specifies the initial size of the flex item before resizing starts to happen. Possible values include:

* `auto` - resolves to the size of the content. This will be the set width if specified. If not, `max-content` sizing will be used.
* `0` or `0%` - tells the browser to ignore the size of the item
* `content` -  newer value that means `max-content` is used even when the width may be set. (Seems like an odd scenario.)

### flex-grow

**flex-grow** specifies the *flex grow factor* which determines how much the item will grow in relation to the other flex items within the container when distributing positive free space.

"Positive free space" exists when the combined width of the flex items is *less* than the width of the flex container.

* If all items have the same **flex-grow** value, the space will be distributed evenly. You typically use a value of `1` for all items in this scenario.
* The value is a ratio so it can be `88`, `100`, `1.2`, etc.
* Setting a value of `0` will prevent the item from growing

### flex-shrink

As you might expect, **flex-shrink** specifies the *flex shrink factor* which determines how much the item will grow in relation to the other flex items within the container when distributing negative free space.

"Negative free space" exists when the combined width of the flex items is *more* than the width of the flex container and the items would extend beyond the bounds of the container.

* If all items have the same **flex-shrink** value, the space will shrink by the same amount. You typically use a value of `1` for all items in this scenario.
* The value is a ratio so it can be `88`, `100`, `1.2`, etc.

According to the [Mozilla article](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Controlling_Ratios_of_Flex_Items_Along_the_Main_Ax#The_flex-grow_property):

> You could say that **flex-shrink** works in pretty much the same way as **flex-grow**. However there are two reasons why it isn’t quite the same.

There's a lot of text here. It's early, and it does not feel super-relevant to me right now. However, an oversimplified summary of the differences is that content will not shrink to 0. It will shrink to its `min-content` size.

### Tailwind CSS

Assuming widths are not specified on any items:

* `flex-auto` equals `flex: 1 1 auto`. It will *maintain the same size ratio* as the available space is distributed evenly amongst each item. 
* `flex-1` equals `flex: 1 1 0%`. It will result in *equally-sized items*.
