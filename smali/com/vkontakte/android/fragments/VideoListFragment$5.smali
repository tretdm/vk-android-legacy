.class Lcom/vkontakte/android/fragments/VideoListFragment$5;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$10(Lcom/vkontakte/android/fragments/VideoListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoListView;->localSearch(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$11(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$11(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
