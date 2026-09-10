.class Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiPickerView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/EmojiPickerView;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/EmojiPickerView;Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;-><init>(Lcom/vkontakte/android/EmojiPickerView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)Lcom/vkontakte/android/EmojiPickerView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/vkontakte/android/EmojiPickerView;->smileys:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 180
    if-nez p2, :cond_1

    .line 181
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v3}, Lcom/vkontakte/android/EmojiPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, "v":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-static {v4}, Lcom/vkontakte/android/EmojiPickerView;->access$0(Lcom/vkontakte/android/EmojiPickerView;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-static {v5}, Lcom/vkontakte/android/EmojiPickerView;->access$0(Lcom/vkontakte/android/EmojiPickerView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    .line 186
    .local v1, "padding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 187
    iget-object v3, p0, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiPickerView;->access$0(Lcom/vkontakte/android/EmojiPickerView;)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    new-instance v3, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter$1;-><init>(Lcom/vkontakte/android/EmojiPickerView$EmojiAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    .end local v1    # "padding":I
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$2()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v0, v3, p1

    .line 201
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 204
    return-object v2

    .line 187
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "padding":I
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .end local v1    # "padding":I
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_1
    move-object v2, p2

    .line 197
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "v":Landroid/widget/ImageView;
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method
