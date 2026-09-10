.class Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/DialogsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/DialogsFragment$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2300(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 850
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 855
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 861
    if-nez p2, :cond_1

    .line 862
    new-instance v1, Lcom/vkontakte/android/ui/DialogEntryView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/DialogEntryView;-><init>(Landroid/content/Context;)V

    .line 866
    .local v1, "v":Lcom/vkontakte/android/ui/DialogEntryView;
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2300(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 868
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v1, v0, v6}, Lcom/vkontakte/android/ui/DialogEntryView;->setData(Lcom/vkontakte/android/DialogEntry;Z)V

    .line 870
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 875
    :goto_1
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v2, :cond_4

    .line 876
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "userphoto"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 877
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "userphoto"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    .line 887
    :cond_0
    :goto_2
    return-object v1

    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v1    # "v":Lcom/vkontakte/android/ui/DialogEntryView;
    :cond_1
    move-object v1, p2

    .line 864
    check-cast v1, Lcom/vkontakte/android/ui/DialogEntryView;

    .restart local v1    # "v":Lcom/vkontakte/android/ui/DialogEntryView;
    goto :goto_0

    .line 873
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    invoke-virtual {v1, v7, v6}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 879
    :cond_3
    invoke-virtual {v1, v7, v8}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 880
    :cond_4
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-le v2, v3, :cond_0

    .line 881
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 882
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2200(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 884
    :cond_5
    invoke-virtual {v1, v7, v8}, Lcom/vkontakte/android/ui/DialogEntryView;->setBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_2
.end method
