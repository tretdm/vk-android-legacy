.class Lcom/vkontakte/android/PhotoViewerActivity$13$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$13;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$13$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$13;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$13;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$13;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$13;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$8(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$13;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$13;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$13;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$9(Lcom/vkontakte/android/PhotoViewerActivity;Z)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    if-nez p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$13$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$13;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$13;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$13;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$10(Lcom/vkontakte/android/PhotoViewerActivity;)V

    goto :goto_0
.end method
