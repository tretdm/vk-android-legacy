.class Lcom/vkontakte/android/PhotoAlbumsView$1;
.super Ljava/lang/Object;
.source "PhotoAlbumsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoAlbumsView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->val$w:I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$1;->val$w:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$4(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    .line 122
    return-void
.end method
