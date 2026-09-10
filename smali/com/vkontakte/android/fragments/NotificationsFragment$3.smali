.class Lcom/vkontakte/android/fragments/NotificationsFragment$3;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoClick(Lcom/vkontakte/android/ui/PhotoStripView;I)V
    .locals 4
    .param p1, "view"    # Lcom/vkontakte/android/ui/PhotoStripView;
    .param p2, "index"    # I

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/vkontakte/android/ui/PhotoStripView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 141
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v2, "ProfileFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 144
    return-void
.end method
