.class Lcom/vkontakte/android/WallView$20;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->displayPhotos([Lcom/vkontakte/android/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$20;->this$0:Lcom/vkontakte/android/WallView;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/vkontakte/android/WallView$20;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v0}, Lcom/vkontakte/android/WallView;->access$18(Lcom/vkontakte/android/WallView;)V

    .line 922
    return-void
.end method
