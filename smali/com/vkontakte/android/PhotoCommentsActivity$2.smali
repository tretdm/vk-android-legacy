.class Lcom/vkontakte/android/PhotoCommentsActivity$2;
.super Ljava/lang/Object;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$2;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$2;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoCommentsActivity;->access$1(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    .line 104
    return-void
.end method
