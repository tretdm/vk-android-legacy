.class Lcom/vkontakte/android/fragments/GroupsFragment$10;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$10;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/api/Group;)V
    .locals 3
    .param p1, "p"    # Lcom/vkontakte/android/api/Group;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "gid"

    iget v2, p1, Lcom/vkontakte/android/api/Group;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v1, "name"

    iget-object v2, p1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "photo"

    iget-object v2, p1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$10;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$10;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 272
    return-void
.end method
