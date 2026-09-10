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
    .line 772
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)Lcom/vkontakte/android/GroupsActivity;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 812
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(III)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I

    .prologue
    .line 818
    packed-switch p1, :pswitch_data_0

    .line 831
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 820
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/GroupInvitation;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    .line 822
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    .line 824
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$0(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    .line 826
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$7(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    .line 828
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    iget-object v0, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v0

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

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
    .line 779
    if-gez p1, :cond_0

    .line 793
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    .line 782
    move v0, p1

    .line 783
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
    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->isSectionHeaderVisible(I)Z

    move-result v0

    return v0
.end method
