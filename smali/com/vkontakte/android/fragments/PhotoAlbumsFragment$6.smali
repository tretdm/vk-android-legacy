.class Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;
.super Ljava/lang/Object;
.source "PhotoAlbumsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->doDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

.field final synthetic val$aid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    return-void

    .line 300
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;->val$aid:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->remove(I)V

    .line 296
    return-void
.end method
