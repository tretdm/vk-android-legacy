.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$000(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$002(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Z)Z

    .line 104
    :goto_0
    return v3

    .line 93
    :cond_0
    if-nez p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$100(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V

    goto :goto_0

    .line 97
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$200(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$100(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$200(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$300(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/VideoAlbum;->id:I

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$100(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
