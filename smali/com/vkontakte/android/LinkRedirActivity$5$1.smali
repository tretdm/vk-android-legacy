.class Lcom/vkontakte/android/LinkRedirActivity$5$1;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LinkRedirActivity$5;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/LinkRedirActivity$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LinkRedirActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LinkRedirActivity$5$1;->this$1:Lcom/vkontakte/android/LinkRedirActivity$5;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/LinkRedirActivity$5$1;->this$1:Lcom/vkontakte/android/LinkRedirActivity$5;

    invoke-static {v0}, Lcom/vkontakte/android/LinkRedirActivity$5;->access$0(Lcom/vkontakte/android/LinkRedirActivity$5;)Lcom/vkontakte/android/LinkRedirActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 475
    return-void
.end method
