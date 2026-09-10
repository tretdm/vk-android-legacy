.class Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiGridAdapter"
.end annotation


# instance fields
.field data:[J

.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/EmojiView;[J)V
    .locals 0
    .param p2, "d"    # [J

    .prologue
    .line 875
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 876
    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    .line 877
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 887
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 898
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 915
    .local v0, "iv":Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/vkontakte/android/Emoji;->getEmojiBigDrawable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->data:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 917
    return-object v0

    .line 900
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$1;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$1;-><init>(Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;Landroid/content/Context;)V

    .line 905
    .restart local v0    # "iv":Landroid/widget/ImageView;
    new-instance v1, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$2;-><init>(Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 913
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method
