.class Lcom/vkontakte/android/PostViewActivity$5;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$5;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$5;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$11(Lcom/vkontakte/android/PostViewActivity;)V

    .line 255
    return-void
.end method
