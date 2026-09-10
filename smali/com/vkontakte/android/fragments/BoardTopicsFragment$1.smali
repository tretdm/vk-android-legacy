.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    .line 94
    return-void
.end method
