.class Lcom/vkontakte/android/fragments/PhotoListFragment$7$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment$7;->success(ILjava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$7;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$7;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$7;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$7;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$7;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$14(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 389
    return-void
.end method
