.class Lcom/vkontakte/android/NewsItemView$5$3;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView$5;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsItemView$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5$3;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$3;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewsItemView$5;->access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$3;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewsItemView$5;->access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsItemView;->updateInfoLine()V

    .line 629
    return-void
.end method
