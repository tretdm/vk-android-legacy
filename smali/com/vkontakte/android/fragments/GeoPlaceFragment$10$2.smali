.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;->this$1:Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    return-void
.end method
