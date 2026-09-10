.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/fragments/PhotoViewerFragment;ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
