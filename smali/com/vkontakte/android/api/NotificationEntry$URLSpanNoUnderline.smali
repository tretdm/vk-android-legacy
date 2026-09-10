.class Lcom/vkontakte/android/api/NotificationEntry$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "NotificationEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/NotificationEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/NotificationEntry;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/api/NotificationEntry;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationEntry$URLSpanNoUnderline;->this$0:Lcom/vkontakte/android/api/NotificationEntry;

    .line 68
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 73
    const v0, -0xd4a786

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 74
    return-void
.end method
