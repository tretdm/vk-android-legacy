.class Lcom/vkontakte/android/fragments/VideoListFragment$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


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
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

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

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$000(Lcom/vkontakte/android/fragments/VideoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$002(Lcom/vkontakte/android/fragments/VideoListFragment;Z)Z

    .line 107
    :goto_0
    return v3

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$100(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    goto :goto_0

    .line 98
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$200(Lcom/vkontakte/android/fragments/VideoListFragment;)I

    move-result v0

    if-lez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$400(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1, v3}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$302(Lcom/vkontakte/android/fragments/VideoListFragment;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoListView;->setType(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$302(Lcom/vkontakte/android/fragments/VideoListFragment;I)I

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$200(Lcom/vkontakte/android/fragments/VideoListFragment;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$500(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/VideoAlbum;->id:I

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$100(Lcom/vkontakte/android/fragments/VideoListFragment;I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
