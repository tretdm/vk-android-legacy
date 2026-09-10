.class Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;
.super Ljava/lang/Object;
.source "PhotoAlbumsListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

.field private final synthetic val$album:Lcom/vkontakte/android/api/PhotoAlbum;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f060051

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    return-void

    .line 238
    :cond_0
    const v0, 0x7f06004e

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$2(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$7;->val$album:Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 234
    return-void
.end method
