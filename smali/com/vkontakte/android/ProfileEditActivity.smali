.class public Lcom/vkontakte/android/ProfileEditActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "ProfileEditActivity.java"


# static fields
.field private static final RELATIONS_SAME_GENDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATIONS_WITH_PARTNER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATION_PARTNER_RESULT:I = 0x65


# instance fields
.field private bdateVisSpinner:Landroid/widget/Spinner;

.field private bday:I

.field private bmonth:I

.field private byear:I

.field private cityID:I

.field private citySelector:Landroid/widget/TextView;

.field private content:Landroid/widget/FrameLayout;

.field private countryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkontakte/android/data/database/Country;",
            ">;"
        }
    .end annotation
.end field

.field private countrySpinner:Landroid/widget/Spinner;

.field private currentInfo:Landroid/os/Bundle;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private form:Landroid/view/View;

.field private gender:I

.field private ignoreCountryChange:Z

.field private progress:Landroid/widget/ProgressBar;

.field private relationAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private relationPartner:Lcom/vkontakte/android/UserProfile;

.field private relationSpinner:Landroid/widget/Spinner;

.field private sendBtn:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 47
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    .line 48
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_SAME_GENDER:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileEditActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ProfileEditActivity;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->loadData()V

    return-void
.end method

.method static synthetic access$12()Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileEditActivity;->setRelationPartner(Lcom/vkontakte/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    return v0
.end method

.method static synthetic access$15()Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_SAME_GENDER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->cancelNameRequest()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->save()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/UserProfile;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ProfileEditActivity;->showNameInfoDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->selectCity()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->selectBirthDate()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->updateRelationOptions()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method private cancelNameRequest()V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v2, "name_req_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;-><init>(I)V

    .line 387
    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileEditActivity$15;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 401
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lcom/vkontakte/android/api/AccountGetProfileInfo;

    invoke-direct {v0}, Lcom/vkontakte/android/api/AccountGetProfileInfo;-><init>()V

    .line 283
    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileEditActivity$14;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountGetProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountGetProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 282
    iput-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 383
    return-void
.end method

.method private save()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 459
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v4, "newInfo":Landroid/os/Bundle;
    const v9, 0x7f090160

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "firstName":Ljava/lang/String;
    const v9, 0x7f090161

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "lastName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    .line 463
    :cond_0
    const v9, 0x7f08028a

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 559
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "first_name"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "last_name"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 467
    :cond_2
    const-string v9, "first_name"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v9, "last_name"

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_3
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    iget-object v11, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v12, "gender"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eq v9, v11, :cond_4

    .line 471
    const-string v9, "gender"

    iget v11, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 474
    .local v8, "relation":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "relation"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 475
    const-string v9, "relation"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "relation_partner"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 478
    .local v6, "relPartner":Lcom/vkontakte/android/UserProfile;
    if-eqz v6, :cond_c

    iget v5, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 479
    .local v5, "newRelPartnerId":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    iget v7, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 480
    .local v7, "relPartnerId":I
    :goto_2
    if-eq v7, v5, :cond_6

    .line 481
    const-string v9, "relation_partner"

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    :cond_6
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bday"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bmonth"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "byear"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_8

    .line 484
    :cond_7
    const-string v9, "bday"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string v9, "bmonth"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    const-string v9, "byear"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    :cond_8
    const/4 v0, -0x1

    .line 489
    .local v0, "bdateVis":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 500
    :goto_3
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v10, "bdate_vis"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v0, v9, :cond_9

    .line 501
    const-string v9, "bdate_vis"

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    :cond_9
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/data/database/Country;

    iget v1, v9, Lcom/vkontakte/android/data/database/Country;->id:I

    .line 504
    .local v1, "country":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v10, "country_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v9, :cond_a

    .line 505
    const-string v9, "country_id"

    invoke-virtual {v4, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    :cond_a
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "city_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_b

    .line 508
    const-string v9, "city_id"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    :cond_b
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v9

    if-nez v9, :cond_e

    .line 511
    const-string v9, "vk"

    const-string v10, "Nothing to save."

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->finish()V

    goto/16 :goto_0

    .end local v0    # "bdateVis":I
    .end local v1    # "country":I
    .end local v5    # "newRelPartnerId":I
    .end local v7    # "relPartnerId":I
    :cond_c
    move v5, v10

    .line 478
    goto/16 :goto_1

    .restart local v5    # "newRelPartnerId":I
    :cond_d
    move v7, v10

    .line 479
    goto/16 :goto_2

    .line 491
    .restart local v0    # "bdateVis":I
    .restart local v7    # "relPartnerId":I
    :pswitch_0
    const/4 v0, 0x1

    .line 492
    goto :goto_3

    .line 494
    :pswitch_1
    const/4 v0, 0x2

    .line 495
    goto :goto_3

    .line 497
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_3

    .line 515
    .restart local v1    # "country":I
    :cond_e
    new-instance v9, Lcom/vkontakte/android/api/AccountSaveProfileInfo;

    invoke-direct {v9, v4}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;-><init>(Landroid/os/Bundle;)V

    .line 516
    new-instance v10, Lcom/vkontakte/android/ProfileEditActivity$19;

    invoke-direct {v10, p0, v4}, Lcom/vkontakte/android/ProfileEditActivity$19;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    .line 557
    invoke-virtual {v9, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    .line 558
    invoke-virtual {v9, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private selectBirthDate()V
    .locals 7

    .prologue
    const/16 v4, 0x76c

    const/4 v1, 0x1

    .line 427
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 428
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$17;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileEditActivity$17;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 438
    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    :goto_0
    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    iget v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    :goto_2
    move-object v1, p0

    .line 428
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 439
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 456
    .end local v0    # "dpd":Landroid/app/DatePickerDialog;
    :goto_3
    return-void

    .line 438
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xe

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    .line 441
    :cond_3
    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$18;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 451
    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    if-le v2, v4, :cond_4

    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    :goto_4
    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    add-int/lit8 v3, v3, -0x1

    :goto_5
    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    .line 441
    :goto_6
    invoke-static {v5, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v6

    .line 452
    .local v6, "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    const/16 v2, 0x771

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {v6, v2, v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setYearRange(II)V

    .line 453
    const v1, 0x7f080252

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "_datepicker_"

    invoke-virtual {v6, v1, v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 451
    .end local v6    # "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    move v4, v1

    goto :goto_6
.end method

.method private selectCity()V
    .locals 4

    .prologue
    .line 232
    new-instance v1, Lcom/vkontakte/android/fragments/CitySelectFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/CitySelectFragment;-><init>()V

    .line 233
    .local v1, "fragment":Lcom/vkontakte/android/fragments/CitySelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hint"

    const v3, 0x7f08031d

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "country"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/database/Country;

    iget v2, v2, Lcom/vkontakte/android/data/database/Country;->id:I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v3, "show_none"

    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 238
    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileEditActivity$13;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setCallback(Lcom/vkontakte/android/fragments/DatabaseSearchFragment$Callback;)V

    .line 248
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/CitySelectFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 249
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRelationPartner(Lcom/vkontakte/android/UserProfile;)V
    .locals 5
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    const v4, 0x7f09016c

    const v0, 0x7f09016b

    const v3, 0x7f09016a

    const v2, 0x7f02027c

    .line 404
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    new-instance v0, Lcom/vkontakte/android/ProfileEditActivity$16;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileEditActivity$16;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08031b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNameInfoDialog(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 562
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    const v2, 0x7f080320

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 564
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 565
    const v2, 0x7f080042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 567
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$20;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ProfileEditActivity$20;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 576
    return-void
.end method

.method private updateRelationOptions()V
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 275
    .local v0, "selected":I
    iget v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0d0065

    :goto_0
    const v2, 0x7f03002d

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    .line 276
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 279
    return-void

    .line 275
    :cond_0
    const v1, 0x7f0d0064

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 268
    const-string v1, "user"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 269
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-direct {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->setRelationPartner(Lcom/vkontakte/android/UserProfile;)V

    .line 271
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x1090009

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v9, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 75
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    .line 76
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/16 v8, 0x11

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const v3, 0x7f03003f

    invoke-static {p0, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    const v3, 0x7f030076

    invoke-static {p0, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    .line 80
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v3, v11}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->setContentView(Landroid/view/View;)V

    .line 86
    const v3, 0x7f09016f

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/vkontakte/android/ui/Fonts;->getRobotoCondensed(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const v3, 0x7f090170

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/vkontakte/android/ui/Fonts;->getRobotoCondensed(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    const v3, 0x7f090166

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    .line 90
    const v3, 0x7f0d0063

    const v4, 0x7f03002d

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 91
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    const v3, 0x7f090167

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    .line 96
    const v3, 0x7f09016d

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    .line 97
    new-instance v3, Lcom/vkontakte/android/ProfileEditActivity$1;

    const v4, 0x7f03002d

    invoke-direct {v3, p0, p0, v4}, Lcom/vkontakte/android/ProfileEditActivity$1;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 108
    invoke-static {v10, v10, v9}, Lcom/vkontakte/android/data/database/Country;->getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 109
    .local v2, "cc":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/database/Country;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$2;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    const v3, 0x7f09016e

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$3;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v3, 0x7f090165

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$4;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v3, 0x7f090162

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$5;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v3, 0x7f090164

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$6;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$6;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$7;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$7;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$8;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$8;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    const v3, 0x7f09016c

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$9;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$9;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v3, 0x7f090169

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$10;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$10;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v3, 0x7f090171

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$11;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$11;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const/high16 v3, 0x7f030000

    invoke-static {p0, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    .line 220
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0800a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$12;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ProfileEditActivity$12;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->loadData()V

    .line 229
    return-void

    .line 109
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/database/Country;

    .local v1, "c":Lcom/vkontakte/android/data/database/Country;
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 252
    const v1, 0x7f0800a0

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 253
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 254
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 255
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 264
    :cond_0
    return-void
.end method
