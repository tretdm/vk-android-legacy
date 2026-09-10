.class Lcom/vkontakte/android/PhotoViewerActivity$18$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$18;

.field private final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$18;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$18$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$18;

    iput-boolean p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$18$1;->val$result:Z

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$18$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$18;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$18;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$18;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$18$1;->val$result:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900a5

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    return-void

    .line 659
    :cond_0
    const v0, 0x7f090053

    goto :goto_0
.end method
