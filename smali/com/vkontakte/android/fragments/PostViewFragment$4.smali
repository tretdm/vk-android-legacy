.class Lcom/vkontakte/android/fragments/PostViewFragment$4;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$4;->val$idx:I

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$4;->val$idx:I

    invoke-static {v0, v1, p1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$12(Lcom/vkontakte/android/fragments/PostViewFragment;ILandroid/view/View;)V

    .line 384
    return-void
.end method
