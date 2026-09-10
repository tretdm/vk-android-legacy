.class Lcom/vkontakte/android/PhotoAlbumsView$6;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$19(Lcom/vkontakte/android/PhotoAlbumsView;Z)V

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$13(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$14(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$13(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$18(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V

    .line 280
    return-void
.end method

.method public success(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "_albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    .local p2, "_system":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    const/16 v2, 0x12c

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$13(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$17(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$14(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$1(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$6;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$18(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V

    .line 271
    return-void
.end method
