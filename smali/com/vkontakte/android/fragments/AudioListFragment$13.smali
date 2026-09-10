.class Lcom/vkontakte/android/fragments/AudioListFragment$13;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$13;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$13;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 435
    const/4 v0, 0x0

    return v0
.end method
