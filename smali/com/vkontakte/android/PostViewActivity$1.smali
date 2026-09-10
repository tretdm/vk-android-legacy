.class Lcom/vkontakte/android/PostViewActivity$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$1;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$1;->val$idx:I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$1;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget v1, p0, Lcom/vkontakte/android/PostViewActivity$1;->val$idx:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$8(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 190
    return-void
.end method
