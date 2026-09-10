.class Lcom/vkontakte/android/PhotoAlbumsView$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$8(Lcom/vkontakte/android/PhotoAlbumsView;Z)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$6(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$7(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V

    .line 154
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "_albums":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/PhotoAlbum;>;"
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$6(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$2;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$7(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V

    .line 145
    return-void
.end method
