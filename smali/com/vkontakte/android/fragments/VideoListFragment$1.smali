.class Lcom/vkontakte/android/fragments/VideoListFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    .local p4, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 78
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$1;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
