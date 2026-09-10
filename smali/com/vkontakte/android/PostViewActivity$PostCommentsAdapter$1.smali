.class Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/vkontakte/android/PostViewActivity;->access$4(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 1139
    return-void
.end method
