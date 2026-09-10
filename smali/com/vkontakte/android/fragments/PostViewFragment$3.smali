.class Lcom/vkontakte/android/fragments/PostViewFragment$3;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->val$idx:I

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->val$idx:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, p1, v0, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$12(Lcom/vkontakte/android/fragments/PostViewFragment;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 354
    return-void
.end method
