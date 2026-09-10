.class Lcom/vkontakte/android/EmojiView$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$1;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$1;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$0(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 196
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$1;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$0(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "ch":Landroid/view/View;
    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 192
    if-ne v0, p1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$1;->this$0:Lcom/vkontakte/android/EmojiView;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/EmojiView;->access$1(Lcom/vkontakte/android/EmojiView;I)V

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
