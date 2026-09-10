.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$5000(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1638
    return-void
.end method
