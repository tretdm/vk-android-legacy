.class Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment$8;->success(ILjava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$8;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$8;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$18(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$8$1;->this$1:Lcom/vkontakte/android/fragments/PhotoListFragment$8;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment$8;->access$0(Lcom/vkontakte/android/fragments/PhotoListFragment$8;)Lcom/vkontakte/android/fragments/PhotoListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$19(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 532
    return-void
.end method
