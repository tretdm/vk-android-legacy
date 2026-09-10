.class Lcom/vkontakte/android/fragments/ProfileFragment$16;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetFullProfile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;->loadInitial(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;I)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1702(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 797
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/ProfileFragment;->onError(ILjava/lang/String;)V

    .line 798
    return-void
.end method

.method public success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "profile"    # Lcom/vkontakte/android/api/ExtendedUserProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/api/ExtendedUserProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v3, 0x0

    .line 755
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 756
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01e1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment$16$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$16$2;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment$16;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$16$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$16$1;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment$16;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 792
    :goto_0
    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 779
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$002(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/api/ExtendedUserProfile;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    .line 780
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1500(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1500(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 782
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1600(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    .line 784
    iget v1, p1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-gez v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_0

    .line 789
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1702(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 790
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->val$count:I

    invoke-static {v1, v3, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1800(Lcom/vkontakte/android/fragments/ProfileFragment;II)V

    .line 791
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateList()V

    goto :goto_0
.end method
