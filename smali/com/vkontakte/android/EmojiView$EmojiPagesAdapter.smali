.class Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"

# interfaces
.implements Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;-><init>(Lcom/vkontakte/android/EmojiView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 862
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$9(Lcom/vkontakte/android/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 863
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$8(Lcom/vkontakte/android/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$8(Lcom/vkontakte/android/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 868
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$10(Lcom/vkontakte/android/EmojiView;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 856
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$9(Lcom/vkontakte/android/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 857
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 858
    return-object v0

    .line 856
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$EmojiPagesAdapter;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$8(Lcom/vkontakte/android/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 852
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
