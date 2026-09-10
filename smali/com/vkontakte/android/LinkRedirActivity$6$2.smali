.class Lcom/vkontakte/android/LinkRedirActivity$6$2;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LinkRedirActivity$6;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/LinkRedirActivity$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity$6;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$6$2;->this$1:Lcom/vkontakte/android/LinkRedirActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$6$2;->this$1:Lcom/vkontakte/android/LinkRedirActivity$6;

    iget-object v0, v0, Lcom/vkontakte/android/LinkRedirActivity$6;->this$0:Lcom/vkontakte/android/LinkRedirActivity;

    const v1, 0x7f0d00ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 590
    return-void
.end method
