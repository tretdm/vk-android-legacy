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
    .line 466
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$6$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$6;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1800(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 470
    return-void
.end method
