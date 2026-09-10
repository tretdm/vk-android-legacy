.class Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;
.super Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.source "GroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/GroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupsImageLoaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)Lcom/vkontakte/android/GroupsActivity;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 692
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 697
    packed-switch p1, :pswitch_data_0

    .line 707
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 699
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 701
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 705
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$7(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$7(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "_item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 659
    if-gez p1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$0(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 662
    move v0, p1

    .line 663
    .local v0, "item":I
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    new-instance v2, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter$1;-><init>(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/GroupsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$7(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
