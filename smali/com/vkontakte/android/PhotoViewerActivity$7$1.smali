.class Lcom/vkontakte/android/PhotoViewerActivity$7$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$7$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$7;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$7$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$7;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$7;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$7;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$7(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$7$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$7;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$7;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$7;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$8(Lcom/vkontakte/android/PhotoViewerActivity;Z)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-nez p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$7$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$7;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$7;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$7;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$9(Lcom/vkontakte/android/PhotoViewerActivity;)V

    goto :goto_0
.end method
