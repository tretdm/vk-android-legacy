.class Lcom/vkontakte/android/PhotoViewerActivity$12$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$12;

.field private final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$12;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$12$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$12;

    iput-boolean p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$12$1;->val$result:Z

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$12$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$12;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$12;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$12$1;->val$result:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900a4

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    return-void

    .line 371
    :cond_0
    const v0, 0x7f090052

    goto :goto_0
.end method
