.class Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;)V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$1(Lcom/vkontakte/android/DialogsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 847
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 852
    if-nez p2, :cond_0

    .line 855
    new-instance p2, Lcom/vkontakte/android/ui/DialogEntryView;

    .end local p2    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p2, v1}, Lcom/vkontakte/android/ui/DialogEntryView;-><init>(Landroid/content/Context;)V

    .line 856
    .restart local p2    # "view":Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    :cond_0
    move-object v1, p2

    .line 860
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/DialogEntryView;->deselect()V

    .line 861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 862
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .local v0, "de":Lcom/vkontakte/android/DialogEntry;
    move-object v1, p2

    .line 863
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/ui/DialogEntryView;->setData(Lcom/vkontakte/android/DialogEntry;Z)V

    .line 864
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 865
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 869
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    .line 870
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 931
    :goto_2
    return-object p2

    .line 862
    .end local v0    # "de":Lcom/vkontakte/android/DialogEntry;
    :cond_1
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    .restart local v0    # "de":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    move-object v1, p2

    .line 867
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    invoke-virtual {v1, v6, v4}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    :cond_3
    move-object v1, p2

    .line 872
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    invoke-virtual {v1, v6, v5}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_2
.end method
