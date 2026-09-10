.class Lcom/vkontakte/android/ProfileView$13;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->openProfilePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 7
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 412
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0800db

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v6, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 418
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_2

    .line 420
    const-string v0, "shared_list"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    sput-object v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedList:Ljava/util/ArrayList;

    .line 425
    :goto_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 426
    const-string v0, "aid"

    const/4 v2, -0x6

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v0, "total"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    :cond_1
    const-string v0, "PhotoViewerFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$13;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 423
    :cond_2
    const-string v0, "list"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1
.end method
