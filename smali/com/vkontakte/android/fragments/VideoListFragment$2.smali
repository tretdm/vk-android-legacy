.class Lcom/vkontakte/android/fragments/VideoListFragment$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 87
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

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$0(Lcom/vkontakte/android/fragments/VideoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$1(Lcom/vkontakte/android/fragments/VideoListFragment;Z)V

    .line 108
    :goto_0
    return v3

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$2(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    goto :goto_0

    .line 99
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$3(Lcom/vkontakte/android/fragments/VideoListFragment;)I

    move-result v0

    if-lez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1, v3}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$5(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/VideoListView;->setType(I)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$5(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$3(Lcom/vkontakte/android/fragments/VideoListFragment;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$6(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/VideoAlbum;->id:I

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$2(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
