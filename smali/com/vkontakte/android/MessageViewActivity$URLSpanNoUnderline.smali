.class Lcom/vkontakte/android/MessageViewActivity$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/MessageViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$URLSpanNoUnderline;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 486
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 487
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 491
    return-void
.end method
