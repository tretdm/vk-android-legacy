.class Lcom/vkontakte/android/fragments/VideoListFragment$4;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$10(Lcom/vkontakte/android/fragments/VideoListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$11(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$11(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 158
    :cond_0
    return-void
.end method
