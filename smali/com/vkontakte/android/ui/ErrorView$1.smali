.class Lcom/vkontakte/android/ui/ErrorView$1;
.super Ljava/lang/Object;
.source "ErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ErrorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ErrorView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ErrorView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ErrorView$1;->this$0:Lcom/vkontakte/android/ui/ErrorView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ErrorView$1;->this$0:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ErrorView;->access$0(Lcom/vkontakte/android/ui/ErrorView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ErrorView$1;->this$0:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ErrorView;->access$1(Lcom/vkontakte/android/ui/ErrorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ErrorView$1;->this$0:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ErrorView;->access$1(Lcom/vkontakte/android/ui/ErrorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ErrorView$1;->this$0:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->access$2(Lcom/vkontakte/android/ui/ErrorView;J)V

    goto :goto_0
.end method
