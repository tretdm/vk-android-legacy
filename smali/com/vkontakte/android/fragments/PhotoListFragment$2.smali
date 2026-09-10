.class Lcom/vkontakte/android/fragments/PhotoListFragment$2;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$8(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 173
    :cond_0
    return-void
.end method
