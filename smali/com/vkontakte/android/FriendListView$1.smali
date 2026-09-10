.class Lcom/vkontakte/android/FriendListView$1;
.super Landroid/text/style/StyleSpan;
.source "FriendListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FriendListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendListView;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$1;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 81
    invoke-direct {p0, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 83
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-static {v0}, Lcom/vkontakte/android/Global;->isPressedOrSelected([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 85
    return-void

    .line 84
    :cond_0
    const v0, -0xb29575

    goto :goto_0
.end method
