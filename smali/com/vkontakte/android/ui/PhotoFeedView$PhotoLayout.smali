.class Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLayout"
.end annotation


# instance fields
.field height:I

.field image:Landroid/graphics/Bitmap;

.field photo:Lcom/vkontakte/android/Photo;

.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

.field width:I


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    return-void
.end method
