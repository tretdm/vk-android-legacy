.class Lcom/vkontakte/android/WallActivity$4;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$4;->this$0:Lcom/vkontakte/android/WallActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$4;->this$0:Lcom/vkontakte/android/WallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/WallActivity;->access$4(Lcom/vkontakte/android/WallActivity;I)V

    .line 163
    return-void
.end method
