.class Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment$6;->success(ILjava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$6;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$14(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 357
    return-void
.end method
