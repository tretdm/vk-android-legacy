.class Lcom/vkontakte/android/AudioAttachView$2;
.super Landroid/text/style/StyleSpan;
.source "AudioAttachView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    .line 73
    invoke-direct {p0, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 75
    sget-object v0, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$2;->this$0:Lcom/vkontakte/android/AudioAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return-void

    .line 77
    :cond_1
    const v0, -0xa68560

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_1
.end method
